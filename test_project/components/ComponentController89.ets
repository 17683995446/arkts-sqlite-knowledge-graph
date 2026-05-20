
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.promptAction } from '@ohos.promptAction';
import { CustomerText } from 'common/CustomerText';

@Link
@Component
export struct ComponentController840 {
  @State mData10: UserModel[] = 55;
  @State mName49: string = 'value1';
  @State mData49: number = 2;
  @State mName16: number = 30;

  build() {
        Stack() {
          Button('Item 0')
          Button('Item 1')
        }
        Flex() {
          List('Item 0')
        }
        Column() {
          List('Item 0')
          Button('Item 1')
        }
        Column() {
          List('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
  }

  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
