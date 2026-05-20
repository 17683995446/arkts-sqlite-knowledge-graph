
import { AuthService } from 'services/AuthService';
import { @system.router } from '@system.router';
import { @ohos.storage.getStorage } from '@ohos.storage.getStorage';
import { Logger } from 'utils/Logger';

@Link
@Component
export struct ComponentHandler521 {
  @State mData45: string = 'value15';
  @State mCount40: boolean = 'true';
  @State mData40: number = 58;
  @State mCount40: number = 94;

  build() {
        Stack() {
          Text('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Column() {
          List('Item 0')
          TextInput('Item 1')
        }
        Flex() {
          Button('Item 0')
          List('Item 1')
          Button('Item 2')
        }
        Stack() {
          Image('Item 0')
          Button('Item 1')
          Text('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          List('Item 1')
          Text('Item 2')
        }
  }

  onRefresh11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick1(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit4(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange3(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange15(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick20(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
