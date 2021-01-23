import React from 'react';
import type { Story, Meta } from '@storybook/react';
import { Center, Text } from '@chakra-ui/react';
import PageTemplate, { PageTemplateProps } from './index';

export default {
  title: 'Components/PageTemplate',
  component: PageTemplate,
  parameters: { layout: 'fullscreen' }
} as Meta;

const Template: Story<PageTemplateProps> = (args) => <PageTemplate {...args} />;

export const Blank = Template.bind({});
Blank.args = {
  children: null,
};

const Wrapper = () => <Center>
  <Text color="red" fontWeight="bold">Hello</Text></Center>;

export const WithText = Template.bind({});
WithText.args = {
  children: <Wrapper />,
}
