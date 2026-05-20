
import { DateUtils } from 'utils/DateUtils';
import { ObjectUtils } from 'utils/ObjectUtils';
import { Logger } from 'utils/Logger';
import { NetworkService } from 'services/NetworkService';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { CartModel } from 'models/CartModel';

@Observed
@Component
export struct ComponentHandler256 {
  @State mAge22: number = 92;
  @State mAge38: number = 49;
  @State mCount20: boolean = 'true';
  @State mAge16: number = 18;

  build() {
        Flex() {
          Image('Item 0')
        }
        Stack() {
          Image('Item 0')
        }
        Row() {
          Image('Item 0')
          Text('Item 1')
        }
        Stack() {
          TextInput('Item 0')
        }
        Flex() {
          Image('Item 0')
          Text('Item 1')
          TextInput('Item 2')
        }
        Stack() {
          List('Item 0')
          TextInput('Item 1')
          Button('Item 2')
        }
        Stack() {
          Button('Item 0')
        }
  }

  onClick12(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
