
import { ArrayUtils } from 'utils/ArrayUtils';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';
import { UserModel } from 'models/UserModel';
import { ProductModel } from 'models/ProductModel';
import { DateUtils } from 'utils/DateUtils';
import { CustomerCard } from 'common/CustomerCard';
import { ValidateUtils } from 'utils/ValidateUtils';
import { AuthService } from 'services/AuthService';

@Component
@Component
export struct ComponentHelper57 {
  @State mData40: boolean = 'true';
  @State mName3: number = 40;
  @State mStatus15: number = 50;

  build() {
        Stack() {
          Image('Item 0')
          Button('Item 1')
        }
        Row() {
          List('Item 0')
        }
        Row() {
          Text('Item 0')
        }
        Row() {
          Text('Item 0')
        }
        Stack() {
          Text('Item 0')
          List('Item 1')
        }
        Row() {
          TextInput('Item 0')
          List('Item 1')
        }
        Stack() {
          Button('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Row() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Stack() {
          Button('Item 0')
          Image('Item 1')
        }
  }

  onClick16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
