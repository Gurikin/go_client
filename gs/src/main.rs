fn main() {
    let mut config = quiche::Config::new(quiche::PROTOCOL_VERSION)?;
    config.set_application_protos(&[b"example-proto"]);
    // config.set_initial_max_streams_bidi(val::MAX_STREAMS_BIDI);
    let conn = quiche::accept(&scid, None, local, peer, &mut config)?;
}
