async function main() {
  const MyNFT = await ethers.getContractFactory("myNFT");

  const myNFT = await MyNFT.deploy();

  console.log("MyNFT deployed to:", myNFT.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

// 0x4Ede6f20e797C1F4923edB0a3bC66943A62AB4aC
