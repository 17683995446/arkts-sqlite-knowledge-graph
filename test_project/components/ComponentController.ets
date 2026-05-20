
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';
import { CustomerText } from 'common/CustomerText';
import { CartModel } from 'models/CartModel';
import { ValidateUtils } from 'utils/ValidateUtils';
import { StringUtils } from 'utils/StringUtils';
import { ArrayUtils } from 'utils/ArrayUtils';
import { DateUtils } from 'utils/DateUtils';

@Entry
@Component
export struct ComponentHelper732 {
  @State mName42: UserModel[] = 68;
  @State mCount11: boolean = 'true';
  @State mAge32: boolean = 'true';
  @State mName25: boolean = 'true';
  @State mList5: boolean = 'true';
  @State mAge21: number = 63;

  build() {
        Column() {
          Button('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Flex() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
  }

  onInit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
