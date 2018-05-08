pragma solidity ^0.4.17;

contract Adoption {
	// Existem 16 possíveis adontantes, para os pets de 0 a 15
	address[16] public adopters;

	// Função para adotar o pet com id petId
	function adopt(uint petId) public returns (uint) {
		// Apenas podemos aceitar petId entre 0 e 15! Caso contrário nada é feito.
	  require(petId >= 0 && petId <= 15);

	  // O adontante do pet com id petId é quem chama essa função
	  adopters[petId] = msg.sender;

	  // confirma o petId adotado (o mesmo passado)
	  return petId;
	}

	// Pega a lista de adontantes
	function getAdopters() public view returns (address[16]) {
		// retorna todos os 16 adotantes
	  return adopters;
	}
}

