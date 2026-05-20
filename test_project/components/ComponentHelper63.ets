
import { @system.router } from '@system.router';
import { CustomerText } from 'common/CustomerText';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { @ohos.promptAction } from '@ohos.promptAction';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { DateUtils } from 'utils/DateUtils';

@StorageProp
@Component
export struct ComponentHelper253 {
  @State mAge18: UserModel[] = 51;
  @State mList9: boolean = 'true';
  @State mStatus32: UserModel[] = 70;

  build() {
        Flex() {
          List('Item 0')
          Button('Item 1')
        }
        Flex() {
          List('Item 0')
        }
        Stack() {
          Button('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Stack() {
          Button('Item 0')
        }
  }

  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
