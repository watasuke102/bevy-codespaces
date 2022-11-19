use bevy::prelude::*;

fn main() {
  App::new()
    .add_plugins(DefaultPlugins)
    .add_startup_system(setup)
    .run();
}

fn setup(mut commands: Commands) {
  commands.spawn(Camera2dBundle::default());
  commands.spawn(SpriteBundle {
    sprite: Sprite {
      color: Color::hex("98c379").unwrap(),
      custom_size: Some(Vec2::new(32.0, 32.0)),
      ..Default::default()
    },
    ..Default::default()
  });
  commands.spawn(SpriteBundle::default());
}
