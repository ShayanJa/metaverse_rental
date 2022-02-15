0xa57e126b341b18c262ad25b86bb4f65b5e2ade45 mainnet landregistry

10208471007628153903901238222953046343705

https://opensea.io/assets/0xf87e31492faf9a91b02ee0deaad50d51d56d5d4d/10208471007628153903901238222953046343705

0xf87e31492faf9a91b02ee0deaad50d51d56d5d4d landproxy

> await sender.sendTransaction({to: signer.address, value: ethers.utils.parseEther('1')})
> 0x56d73eab5b1aa46ddade8666da65cb79b53ff44d

> LandRegistry = await ethers.getContractAt("ILANDRegistry", "0xf87e31492faf9a91b02ee0deaad50d51d56d5d4d")
> registry = await LandRegistry.deployed()
> const [sender, sender2] = await ethers.getSigners()
> await registry.connect(signer).setUpdateManager("0x56d73eab5b1aa46ddade8666da65cb79b53ff44d", sender2.address, true)
> const signer = await ethers.getSigner("0x56D73EAb5b1Aa46ddADe8666Da65cB79b53Ff44D")
> await hre.network.provider.request({method: "hardhat_impersonateAccount", params: ["0x56d73eab5b1aa46ddade8666da65cb79b53ff44d"]})
> await sender.sendTransaction({to: signer.address, value: ethers.utils.parseEther('1')})
> await registry.connect(signer).setUpdateOperator("10208471007628153903901238222953046343705", sender2.address)
