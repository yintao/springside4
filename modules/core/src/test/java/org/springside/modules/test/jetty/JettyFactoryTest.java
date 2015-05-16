/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package org.springside.modules.test.jetty;

import static org.assertj.core.api.Assertions.*;

import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.ServerConnector;
import org.eclipse.jetty.webapp.WebAppContext;
import org.junit.Test;

public class JettyFactoryTest {

	@Test
	public void createServer() {
		Server server = JettyFactory.createServerInSource(1978, "/test");
		Connector[] connectors = server.getConnectors();
		ServerConnector sc = (ServerConnector) connectors[0];
		assertThat(sc.getPort()).isEqualTo(1978);
		assertThat(((WebAppContext) server.getHandler()).getContextPath()).isEqualTo("/test");
		assertThat(((WebAppContext) server.getHandler()).getWar()).isEqualTo("src/main/webapp");
	}
}
