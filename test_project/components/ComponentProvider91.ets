
import { ValidateUtils } from 'utils/ValidateUtils';
import { ProductModel } from 'models/ProductModel';
import { @ohos.hilog } from '@ohos.hilog';
import { CustomerText } from 'common/CustomerText';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { AuthService } from 'services/AuthService';

@Prop
@Component
export struct ComponentView471 {
  @State mCount13: number = 9;
  @State mStatus9: number = 88;
  @State mName30: UserModel[] = 81;
  @State mCount1: string = 'value35';
  @State mName8: number = 25;
  @State mCount20: boolean = 'true';

  build() {
        Flex() {
          List('Item 0')
        }
        Column() {
          Image('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          Text('Item 0')
          Image('Item 1')
          List('Item 2')
        }
        Flex() {
          TextInput('Item 0')
          Text('Item 1')
        }
        Row() {
          List('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Stack() {
          Image('Item 0')
          TextInput('Item 1')
          TextInput('Item 2')
        }
        Flex() {
          Image('Item 0')
          List('Item 1')
        }
        Row() {
          TextInput('Item 0')
          List('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          List('Item 0')
          Text('Item 1')
        }
        Stack() {
          Text('Item 0')
          List('Item 1')
        }
  }

  onClick5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
