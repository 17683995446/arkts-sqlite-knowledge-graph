
import { CustomerCard } from 'common/CustomerCard';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { CustomerText } from 'common/CustomerText';
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.router } from '@ohos.router';

@State
@Component
export struct ComponentService537 {
  @State mAge20: number = 73;
  @State mStatus17: string = 'value39';
  @State mData45: boolean = 'true';
  @State mStatus5: number = 68;
  @State mList4: boolean = 'true';
  @State mAge50: string = 'value35';

  build() {
        Column() {
          Image('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Row() {
          Image('Item 0')
        }
        Stack() {
          Text('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          Text('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Column() {
          Button('Item 0')
          List('Item 1')
        }
        Row() {
          Button('Item 0')
        }
        Column() {
          Image('Item 0')
          List('Item 1')
        }
        Flex() {
          Image('Item 0')
          Text('Item 1')
          Button('Item 2')
        }
  }

  onRefresh15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
