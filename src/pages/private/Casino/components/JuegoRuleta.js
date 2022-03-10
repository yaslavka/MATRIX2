import React from 'react'
import './JuegoRuleta.css'
import { Col, Container, Row } from 'reactstrap'
import NavBar from '../../../../components/layout/Navbar'
import Spin from './Header'
//import 'react-swf'
//import ReactSWF from 'react-swf'

function JuegoRuleta() {
  return (
    <Container className="root-page">
      <Row>
        <Col xl={3} className="d-none d-xl-block">
          <NavBar />
        </Col>
        <Col xl={9}>
          <Spin />
          <iframe src="http://admiral/lobby/game/cocktail/" width="100%" height="45%" />
        </Col>
      </Row>
    </Container>
  )
}
export default JuegoRuleta
