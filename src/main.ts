import { Message } from './message';

export class Main {
  handle(process: NodeJS.Process) {
    const message: Message = { message: process.argv[2] };
    console.log(message.message);
  }
}
