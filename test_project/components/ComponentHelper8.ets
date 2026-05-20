
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';
import { CustomerText } from 'common/CustomerText';
import { @ohos.promptAction } from '@ohos.promptAction';

@Preview
@Component
export struct ComponentManager380 {
  @State mList26: UserModel[] = 86;
  @State mData6: boolean = 'true';
  @State mStatus21: boolean = 'true';
  @State mCount8: UserModel[] = 26;

  build() {
        Row() {
          Image('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Row() {
          Image('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Column() {
          Button('Item 0')
        }
        Stack() {
          Button('Item 0')
          Image('Item 1')
        }
        Stack() {
          TextInput('Item 0')
        }
        Flex() {
          List('Item 0')
          Button('Item 1')
        }
  }

  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
