import React from 'react';
import { Box, Center, VStack, HStack, Text, useBreakpointValue } from '@chakra-ui/react';
import {SunIcon} from '@chakra-ui/icons';
import Logo from '../../assets/logo';

export interface SideBarProps { 
}

interface SideBarMenuProps {
  icon: React.ReactNode;
  text: string;
  selected?: boolean;
}


const SideBarMenu = ({ icon, text, selected }: SideBarMenuProps) => {
  
   const showText = useBreakpointValue({ base: false, md: true })
  return <HStack spacing={{base: 2, md: 5}} paddingLef={0}>
    <Box backgroundColor={selected ? "#2A69AC": undefined} width="10px" height="30px" />
    {icon} 
    {showText ? <Text color={selected ? "#2A69AC" : undefined} fontWeight={selected ? "bold" : undefined}>{text}</Text> : null}
  </HStack> 
}

const SideBar = ({ }: SideBarProps) => {

  return <VStack width={{base: "50px", md: "250px"}} height="100%" spacing={5} backgroundColor="white">
      <Center width="100%" my={{base: "20px", md: "50px"}}>
        <Logo width={{base: "30px", md: "100px"}} height={{base: "30px", md: "100px"}} />
    </Center>
    <VStack spacing={5} align="left" width="100%">
      <SideBarMenu
        icon={<SunIcon />}
        text="Dashboard"
        selected
      />
      <SideBarMenu
        icon={<SunIcon />}
        text="Employees"
      />
    </VStack>
  </VStack>;
}

export default SideBar;