use axum::{
    routing::get,
    Router,
    response::IntoResponse,
};
use std::net::SocketAddr;
use tower_http::cors::{CorsLayer, Any};

async fn hello() -> impl IntoResponse {
    "Hello from Rust backend 🚀"
}

#[tokio::main]
async fn main() {
    let cors = CorsLayer::new()
        .allow_origin(Any)
        .allow_methods(Any)
        .allow_headers(Any);

    let app = Router::new()
        .route("/api/hello", get(hello))
        .layer(cors);

    let addr = SocketAddr::from(([0, 0, 0, 0], 3000));

    println!("Backend running on http://localhost:3000");

    let listener = tokio::net::TcpListener::bind(addr).await.unwrap();

    axum::serve(listener, app).await.unwrap();
}