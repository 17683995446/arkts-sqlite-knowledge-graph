
import { ObjectUtils } from 'utils/ObjectUtils';
import { @system.router } from '@system.router';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Preview
@Component
export struct ComponentHelper872 {
  @State mStatus42: UserModel[] = 2;
  @State mAge23: boolean = 'true';
  @State mName20: string = 'value15';
  @State mName1: number = 10;

  build() {
        Flex() {
          Button('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Column() {
          List('Item 0')
        }
        Flex() {
          Image('Item 0')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
        }
        Column() {
          Image('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Column() {
          Image('Item 0')
        }
        Flex() {
          Text('Item 0')
          TextInput('Item 1')
        }
  }

  onClick19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
