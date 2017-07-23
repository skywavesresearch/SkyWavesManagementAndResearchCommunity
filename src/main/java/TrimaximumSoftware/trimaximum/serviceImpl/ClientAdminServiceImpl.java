package TrimaximumSoftware.trimaximum.serviceImpl;

import org.springframework.stereotype.Service;

import TrimaximumSoftware.trimaximum.repository.ClientAdminRepository;
import TrimaximumSoftware.trimaximum.service.ClientAdminService;

@Service
public class ClientAdminServiceImpl implements ClientAdminService {
	
	
	private ClientAdminRepository clientAdminRepository;

	public ClientAdminRepository getClientAdminRepository() {
		return clientAdminRepository;
	}

	public void setClientAdminRepository(ClientAdminRepository clientAdminRepository) {
		this.clientAdminRepository = clientAdminRepository;
	}
	
	

}
