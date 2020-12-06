/// available pages
enum UiRoutes { root, activation, deactivation, news, preview }

/// news definiation
Map<UiRoutes, String> uiRoutes = {
  UiRoutes.root: '/',
  UiRoutes.activation: '/activation',
  UiRoutes.deactivation: '/deactivation',
  UiRoutes.news: '/news',
  UiRoutes.preview: '/preview'
};
