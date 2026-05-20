
import { DataService } from 'services/DataService';
import { ObjectUtils } from 'utils/ObjectUtils';
import { DateUtils } from 'utils/DateUtils';
import { ProductModel } from 'models/ProductModel';
import { @ohos.app.ability.AbilityConstant } from '@ohos.app.ability.AbilityConstant';
import { CustomerText } from 'common/CustomerText';
import { StringUtils } from 'utils/StringUtils';
import { Logger } from 'utils/Logger';

@StorageProp
@Component
export struct ComponentWidget705 {
  @State mData47: number = 36;
  @State mData20: boolean = 'true';
  @State mStatus38: UserModel[] = 57;
  @State mList15: boolean = 'true';

  build() {
        Row() {
          Image('Item 0')
          Button('Item 1')
        }
        Row() {
          Text('Item 0')
        }
        Column() {
          Image('Item 0')
        }
        Row() {
          Text('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
        Column() {
          Button('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Stack() {
          TextInput('Item 0')
        }
        Row() {
          List('Item 0')
          List('Item 1')
        }
        Stack() {
          Image('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Row() {
          Image('Item 0')
          Image('Item 1')
          TextInput('Item 2')
        }
  }

  onSubmit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
