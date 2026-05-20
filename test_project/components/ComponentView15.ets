
import { @ohos.storage } from '@ohos.storage';
import { DataService } from 'services/DataService';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.hilog } from '@ohos.hilog';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { AuthService } from 'services/AuthService';

@State
@Component
export struct ComponentService184 {
  @State mAge16: string = 'value3';
  @State mData14: number = 33;

  build() {
        Row() {
          Image('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Stack() {
          Text('Item 0')
          List('Item 1')
        }
        Column() {
          List('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Image('Item 0')
          List('Item 1')
        }
        Column() {
          Button('Item 0')
        }
        Column() {
          List('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Stack() {
          List('Item 0')
        }
        Flex() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
  }

  onSubmit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
