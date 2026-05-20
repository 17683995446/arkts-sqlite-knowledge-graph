
import { ObjectUtils } from 'utils/ObjectUtils';
import { @ohos.router } from '@ohos.router';
import { Logger } from 'utils/Logger';
import { CustomerText } from 'common/CustomerText';
import { CartModel } from 'models/CartModel';
import { ArrayUtils } from 'utils/ArrayUtils';
import { DataService } from 'services/DataService';
import { @ohos.app.ability.Want } from '@ohos.app.ability.Want';

@StorageProp
@Component
export struct ComponentManager536 {
  @State mList20: string = 'value27';
  @State mAge15: string = 'value71';
  @State mList13: string = 'value54';
  @State mList23: boolean = 'true';
  @State mAge1: boolean = 'true';
  @State mAge11: boolean = 'true';

  build() {
        Stack() {
          List('Item 0')
          List('Item 1')
        }
        Column() {
          Button('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Column() {
          Text('Item 0')
          Text('Item 1')
          List('Item 2')
        }
        Stack() {
          Text('Item 0')
          Image('Item 1')
        }
        Row() {
          List('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Stack() {
          Image('Item 0')
          Image('Item 1')
        }
        Row() {
          List('Item 0')
          List('Item 1')
          Text('Item 2')
        }
        Row() {
          Image('Item 0')
          Button('Item 1')
        }
        Flex() {
          Text('Item 0')
          Image('Item 1')
        }
  }

  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
