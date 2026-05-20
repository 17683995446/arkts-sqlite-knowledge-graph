
import { ObjectUtils } from 'utils/ObjectUtils';
import { ConfigService } from 'services/ConfigService';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@Component
@Component
export struct ComponentProvider800 {
  @State mData5: UserModel[] = 67;
  @State mCount9: UserModel[] = 66;
  @State mList39: number = 40;
  @State mList24: UserModel[] = 56;
  @State mStatus13: UserModel[] = 66;
  @State mCount4: string = 'value20';

  build() {
        Column() {
          Image('Item 0')
          Button('Item 1')
          Image('Item 2')
        }
        Row() {
          List('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
          Image('Item 2')
        }
        Flex() {
          List('Item 0')
          Image('Item 1')
        }
        Row() {
          Image('Item 0')
        }
        Stack() {
          List('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
        }
        Column() {
          List('Item 0')
          List('Item 1')
        }
        Row() {
          List('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Row() {
          Image('Item 0')
          Text('Item 1')
          List('Item 2')
        }
  }

  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
