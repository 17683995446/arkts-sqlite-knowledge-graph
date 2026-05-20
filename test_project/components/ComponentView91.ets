
import { Logger } from 'utils/Logger';
import { NetworkService } from 'services/NetworkService';
import { OrderModel } from 'models/OrderModel';
import { UserModel } from 'models/UserModel';
import { AuthService } from 'services/AuthService';

@StorageLink
@Component
export struct ComponentConsumer55 {
  @State mCount4: boolean = 'true';
  @State mAge41: string = 'value54';

  build() {
        Column() {
          Image('Item 0')
          Button('Item 1')
          Button('Item 2')
        }
        Column() {
          Image('Item 0')
          Image('Item 1')
          Image('Item 2')
        }
        Flex() {
          Image('Item 0')
          Image('Item 1')
        }
  }

  onInit1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit13(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh9(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
