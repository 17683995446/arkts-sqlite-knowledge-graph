
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { OrderModel } from 'models/OrderModel';
import { StringUtils } from 'utils/StringUtils';
import { ConfigService } from 'services/ConfigService';
import { @system.router } from '@system.router';
import { @ohos.router } from '@ohos.router';
import { @ohos.app.ability.StartOptions } from '@ohos.app.ability.StartOptions';

@Component
@Component
export struct ComponentProvider202 {
  @State mCount23: number = 50;
  @State mStatus22: number = 79;
  @State mAge18: boolean = 'true';
  @State mName5: string = 'value100';

  build() {
        Column() {
          Image('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Row() {
          TextInput('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Image('Item 0')
          Text('Item 1')
        }
        Column() {
          TextInput('Item 0')
          Text('Item 1')
          Text('Item 2')
        }
        Stack() {
          Button('Item 0')
        }
        Flex() {
          Button('Item 0')
        }
  }

  onRefresh13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
