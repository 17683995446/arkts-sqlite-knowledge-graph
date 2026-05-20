
import { Logger } from 'utils/Logger';
import { @ohos.storage } from '@ohos.storage';
import { OrderModel } from 'models/OrderModel';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';

@StorageProp
@Component
export struct ComponentUtils813 {
  @State mList27: UserModel[] = 39;
  @State mStatus31: string = 'value4';
  @State mName17: string = 'value2';
  @State mAge23: UserModel[] = 18;

  build() {
        Column() {
          List('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
        }
        Column() {
          List('Item 0')
          Button('Item 1')
        }
        Row() {
          Image('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Button('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Column() {
          Image('Item 0')
        }
        Flex() {
          Text('Item 0')
          Button('Item 1')
        }
        Column() {
          Text('Item 0')
          List('Item 1')
        }
        Stack() {
          List('Item 0')
        }
        Row() {
          TextInput('Item 0')
        }
  }

  onClick20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
