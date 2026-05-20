
import { CustomerText } from 'common/CustomerText';
import { CartModel } from 'models/CartModel';
import { @ohos.storage } from '@ohos.storage';
import { AuthService } from 'services/AuthService';

@Entry
@Component
export struct ComponentController36 {
  @State mName14: string = 'value47';
  @State mStatus36: string = 'value100';
  @State mCount44: string = 'value2';
  @State mList35: boolean = 'true';
  @State mList35: boolean = 'true';
  @State mList46: boolean = 'true';

  build() {
        Stack() {
          List('Item 0')
          List('Item 1')
        }
        Stack() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Stack() {
          Button('Item 0')
          Image('Item 1')
        }
        Column() {
          Text('Item 0')
          Image('Item 1')
          Button('Item 2')
        }
        Stack() {
          Text('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Row() {
          List('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Row() {
          TextInput('Item 0')
          Button('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
        Flex() {
          List('Item 0')
        }
        Column() {
          Image('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
  }

  onClick18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
