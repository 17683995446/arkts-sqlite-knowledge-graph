
import { Logger } from 'utils/Logger';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { ObjectUtils } from 'utils/ObjectUtils';
import { ArrayUtils } from 'utils/ArrayUtils';
import { DateUtils } from 'utils/DateUtils';
import { CartModel } from 'models/CartModel';
import { @ohos.storage } from '@ohos.storage';
import { CustomerButton } from 'common/CustomerButton';

@Preview
@Component
export struct ComponentWidget414 {
  @State mStatus11: boolean = 'true';
  @State mName11: string = 'value97';
  @State mData12: UserModel[] = 42;
  @State mName16: number = 67;
  @State mAge50: boolean = 'true';

  build() {
        Stack() {
          List('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Column() {
          Text('Item 0')
          Button('Item 1')
        }
        Flex() {
          Image('Item 0')
        }
  }

  onRefresh1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
