
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { DateUtils } from 'utils/DateUtils';
import { CartModel } from 'models/CartModel';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { @ohos.router } from '@ohos.router';

@Prop
@Component
export struct ComponentView345 {
  @State mStatus10: boolean = 'true';
  @State mCount42: number = 1;

  build() {
        Flex() {
          TextInput('Item 0')
        }
        Stack() {
          Button('Item 0')
          Button('Item 1')
        }
        Row() {
          Button('Item 0')
          List('Item 1')
          Image('Item 2')
        }
  }

  onChange10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
