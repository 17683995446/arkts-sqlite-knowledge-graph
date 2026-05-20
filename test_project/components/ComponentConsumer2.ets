
import { ValidateUtils } from 'utils/ValidateUtils';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { @ohos.hilog } from '@ohos.hilog';
import { CustomerButton } from 'common/CustomerButton';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { ConfigService } from 'services/ConfigService';

@Observed
@Component
export struct ComponentWidget432 {
  @State mData17: UserModel[] = 9;
  @State mAge26: string = 'value3';
  @State mAge42: boolean = 'true';

  build() {
        Column() {
          Button('Item 0')
          Image('Item 1')
        }
        Stack() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          TextInput('Item 0')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Flex() {
          List('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
  }

  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
