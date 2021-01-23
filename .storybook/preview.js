import React from 'react';
import { ChakraProvider } from '@chakra-ui/react';

export const parameters = {
  actions: { argTypesRegex: '^on[A-Z].*' },
};

export const decorators = [
  (Story) => (
    <ChakraProvider resetCSS >
      <Story />
    </ChakraProvider>
  ),
];
