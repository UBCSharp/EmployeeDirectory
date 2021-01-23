import React from 'react';
import { Box, Center, VStack, HStack, Text } from '@chakra-ui/react';
import SideBar from '../SideBar';

export interface PageTemplateProps {
  children?: React.ReactNode;
}

const PageTemplate = ({children}: PageTemplateProps) => {
    return <HStack spacing={0} backgroundColor="#F6F6FA" width="100%" align="top">
        <SideBar />
        <Box width="100%" height="100%">{children}</Box>
    </HStack>;
  }
  
export default PageTemplate;