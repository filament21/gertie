module StyleGuideHelpers

  BASE = 'source/style-guide/markup'

  def render_haml(content, scope)
    Haml::Helpers.escape_once(Haml::Engine.new(content).render(scope))
  end

  class StyleGuideScope
    def image_tag(url, options)
      %Q{<img src="#{url}" alt="#{options.delete(:alt)}" />}
    end
  end

  def sg_scope
    StyleGuideScope.new
  end


  def sg_filenames(dir)
    base = "#{BASE}/#{dir}"
    Dir.entries(base).
      reject {|f| f.start_with?('.') }
  end

  def sg_basenames(dir)
    sg_filenames(dir).map {|f| sg_make_basename_from_filename(f) }
  end

  def sg_fns_bns_tns_and_content(dir)
    sg_filenames(dir).map do |fn|
      bn = sg_make_basename_from_filename(fn)
      tn = sg_make_titlename_from_basename(bn)
      [fn, bn, tn, File.read(File.join('.', BASE, dir, fn))]
    end
  end

  def sg_make_basename_from_filename(filename)
    File.basename(filename, '.html.haml').sub('_','')
  end

  def sg_make_titlename_from_basename(basename)
    basename.split('-').map(&:capitalize).join(' ')
  end

  def sg_basenames_with_titlenames(dir)
    sg_basenames(dir).map {|f| [f, sg_make_titlename_from_basename(f)] }
  end

  def sg_base_filenames
    sg_filenames('base')
  end

  def sg_components_filenames
    sg_filenames('components')
  end

  def sg_base_basenames
    sg_basenames('base')
  end

  def sg_components_basenames
    sg_basenames('components')
  end

end