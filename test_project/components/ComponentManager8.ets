
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.storage } from '@ohos.storage';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.hilog } from '@ohos.hilog';
import { ConfigService } from 'services/ConfigService';

@Component
@Component
export struct ComponentManager249 {
  @State mCount36: string = 'value88';
  @State mName34: UserModel[] = 91;
  @State mData29: UserModel[] = 18;
  @State mName50: UserModel[] = 65;
  @State mAge5: string = 'value76';
  @State mName48: number = 18;

  build() {
        Row() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
        Row() {
          List('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          List('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Stack() {
          Text('Item 0')
        }
        Flex() {
          List('Item 0')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Row() {
          List('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Button('Item 0')
          Image('Item 1')
          List('Item 2')
        }
  }

  onClick8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
