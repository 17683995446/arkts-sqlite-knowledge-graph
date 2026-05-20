
import { @ohos.promptAction } from '@ohos.promptAction';
import { OrderModel } from 'models/OrderModel';
import { ConfigService } from 'services/ConfigService';
import { DateUtils } from 'utils/DateUtils';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';

@Entry
@Component
export struct ComponentWidget931 {
  @State mAge21: string = 'value93';
  @State mAge1: number = 82;

  build() {
        Stack() {
          Button('Item 0')
          Image('Item 1')
          Text('Item 2')
        }
        Flex() {
          TextInput('Item 0')
        }
        Flex() {
          Text('Item 0')
        }
        Flex() {
          Button('Item 0')
        }
  }

  onChange3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh16(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh17(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
