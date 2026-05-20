
import { NetworkService } from 'services/NetworkService';
import { ValidateUtils } from 'utils/ValidateUtils';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { DateUtils } from 'utils/DateUtils';
import { CustomerText } from 'common/CustomerText';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';

@StorageProp
@Component
export struct ComponentProvider242 {
  @State mAge50: number = 98;
  @State mStatus13: number = 69;
  @State mList39: string = 'value32';
  @State mAge50: UserModel[] = 24;

  build() {
        Flex() {
          List('Item 0')
          List('Item 1')
        }
        Column() {
          Image('Item 0')
          Text('Item 1')
        }
        Row() {
          Image('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Stack() {
          Button('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
  }

  onRefresh8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
