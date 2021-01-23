import React from 'react';
import type { Story, Meta } from '@storybook/react';
import SideBar, { SideBarProps } from './index';

export default {
  title: 'Components/SideBar',
  component: SideBar,
} as Meta;

const Template: Story<SideBarProps> = (args) => <SideBar {...args} />;

export const Default = Template.bind({});
Default.args = {
};
