
import { @ohos.router } from '@ohos.router';
import { @ohos.storage } from '@ohos.storage';
import { @ohos.storage.Storage } from '@ohos.storage.Storage';
import { OrderModel } from 'models/OrderModel';
import { NetworkService } from 'services/NetworkService';

@Link
@Component
export struct ComponentConsumer882 {
  @State mName5: string = 'value16';
  @State mData49: string = 'value3';
  @State mAge39: UserModel[] = 54;
  @State mData40: number = 57;
  @State mData9: UserModel[] = 93;

  build() {
        Stack() {
          Text('Item 0')
          Button('Item 1')
        }
        Row() {
          TextInput('Item 0')
          Image('Item 1')
        }
        Stack() {
          Button('Item 0')
          TextInput('Item 1')
        }
        Column() {
          Text('Item 0')
        }
  }

  onInit14(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit10(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh6(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit18(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
