import { NativeModules } from 'react-native';

type IosCalendarType = {
    multiply(a: number, b: number): Promise<number>;
    open(date: string, callback: Function): void;
};

const { IosCalendar } = NativeModules;

export default IosCalendar as IosCalendarType;
