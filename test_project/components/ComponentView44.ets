
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { StringUtils } from 'utils/StringUtils';
import { ProductModel } from 'models/ProductModel';
import { CartModel } from 'models/CartModel';
import { Logger } from 'utils/Logger';
import { @ohos.app.ability.Ability } from '@ohos.app.ability.Ability';
import { @ohos.router } from '@ohos.router';
import { @ohos.common.TitleBar } from '@ohos.common.TitleBar';

@Preview
@Component
export struct ComponentManager531 {
  @State mAge38: number = 88;
  @State mAge26: string = 'value66';
  @State mData47: UserModel[] = 71;
  @State mStatus47: boolean = 'true';

  build() {
        Column() {
          List('Item 0')
        }
        Stack() {
          Image('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
        Stack() {
          Text('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
        Column() {
          List('Item 0')
        }
        Row() {
          TextInput('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Row() {
          Button('Item 0')
        }
        Stack() {
          Text('Item 0')
        }
        Flex() {
          List('Item 0')
          TextInput('Item 1')
          Text('Item 2')
        }
        Row() {
          Image('Item 0')
          Button('Item 1')
        }
  }

  onClick5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
