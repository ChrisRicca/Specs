Pod::Spec.new do |s|
  s.name     = 'ChrisRiccaNimbus'
  s.version  = '1.0.0'
  s.license  = 'Apache License, Version 2.0'
  s.summary  = 'An iOS framework whose growth is bounded by O(documentation).'
  s.homepage = 'http://docs.nimbuskit.info/index.html'
  s.author   = { 'Jeff Verkoeyen'    => 'jverkoey@gmail.com',
                 'Bubnov Slavik'     => 'bubnovslavik@gmail.com',
                 'Roger Chapman'     => 'rogchap@gmail.com',
                 'Manu Cornet'       => 'manu.cornet@gmail.com',
                 'Glenn Grant'       => 'glenn@ensquared.net',
                 'Aviel Lazar'       => 'aviellazar@gmail.com',
                 'Benedikt Meurer'   => 'benedikt.meurer@googlemail.com',
                 'Anderson Miller'   => 'anderson@submarinerich.com',
                 'Basil Shkara'      => 'basil@neat.io',
                 'Peter Steinberger' => 'me@petersteinberger.com',
                 'Hwee-Boon Yar'     => 'hboon@motionobj.com' }

  s.source   = { :git => 'https://github.com/ChrisRicca/nimbus.git', :branch => 'cr-hacked-attributed-image' }

  s.description = 'Nimbus is an iOS framework whose feature set grows only as fast as its documentation. '  \
                  'By focusing on documentation first and features second, Nimbus hopes to be a framework ' \
                  'that accelerates the development process of any application by being easy to use and '   \
                  'simple to understand.'

  s.platform = :ios, '5.0'

  s.requires_arc = true

  s.subspec 'Core' do |core|    
    core.source_files = 'src/core/src'
  end

  s.subspec 'Badge' do |badge|
    badge.source_files = 'src/badge/src'
    badge.dependency 'ChrisRiccaNimbus/Core'
  end

  s.subspec 'CSS' do |css|
    css.source_files = 'src/css/src'
    css.dependency 'ChrisRiccaNimbus/Core'
    css.dependency 'AFNetworking'
  end

  s.subspec 'AttributedLabel' do |label|
    label.source_files = 'src/attributedlabel/src'
    label.framework    = 'CoreText'
    label.framework    = 'CoreGraphics'
    label.dependency 'ChrisRiccaNimbus/Core'
  end

  s.subspec 'Interapp' do |interapp|
    interapp.source_files = 'src/interapp/src'
    interapp.dependency 'ChrisRiccaNimbus/Core'
  end

  s.subspec 'Launcher' do |launcher|
    launcher.source_files = 'src/launcher/src'
    launcher.dependency 'ChrisRiccaNimbus/Core'
  end

  s.subspec 'Models' do |models|
    models.source_files = 'src/models/src'
    models.dependency 'ChrisRiccaNimbus/Core'
  end

  s.subspec 'NetworkControllers' do |controllers|
    controllers.source_files = 'src/networkcontrollers/src'
    controllers.dependency 'ChrisRiccaNimbus/Core'
  end

  s.subspec 'NetworkImage' do |image|
    image.source_files = 'src/networkimage/src'
    image.dependency 'ChrisRiccaNimbus/Core'

  end

  s.subspec 'Overview' do |overview|
    overview.source_files = 'src/overview/src'
    overview.resource     = 'src/overview/resources/NimbusOverviewer.bundle'
    overview.dependency 'ChrisRiccaNimbus/Core'
  end

  s.subspec 'PagingScrollView' do |psv|
    psv.source_files = 'src/pagingscrollview/src'
    psv.dependency 'ChrisRiccaNimbus/Core'
  end

  s.subspec 'Photos' do |photos|
    photos.source_files = 'src/photos/src'
    photos.resource     = 'src/photos/resources/NimbusPhotos.bundle'
    photos.dependency 'ChrisRiccaNimbus/Core'
    photos.dependency 'ChrisRiccaNimbus/PagingScrollView'
  end

  s.subspec 'Operations' do |operations|
    operations.source_files = 'src/operations/src'
    operations.dependency 'ChrisRiccaNimbus/Core'

    operations.subspec 'JSON' do |json|
      json.source_files = 'src/operations/src_JSONKit'
      json.dependency 'JSONKit'
    end
  end

  s.subspec 'WebController' do |web_controller|
    web_controller.source_files = 'src/webcontroller/src'
    web_controller.resource     = 'src/webcontroller/resources/NimbusWebController.bundle'
    web_controller.dependency 'ChrisRiccaNimbus/Core'
  end
end
