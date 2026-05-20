
import { Logger } from 'utils/Logger';
import { ObjectUtils } from 'utils/ObjectUtils';
import { AuthService } from 'services/AuthService';

@StorageLink
@Component
export struct ComponentController657 {
  @State mName15: boolean = 'true';
  @State mCount6: string = 'value70';

  build() {
        Column() {
          Button('Item 0')
        }
        Flex() {
          Image('Item 0')
          TextInput('Item 1')
          List('Item 2')
        }
        Stack() {
          List('Item 0')
          Text('Item 1')
          Image('Item 2')
        }
        Stack() {
          TextInput('Item 0')
          Button('Item 1')
        }
        Row() {
          TextInput('Item 0')
          List('Item 1')
          List('Item 2')
        }
        Flex() {
          Text('Item 0')
          TextInput('Item 1')
        }
        Row() {
          Text('Item 0')
        }
  }

  onRefresh7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onInit2(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick5(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onLoad19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onSubmit8(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onRefresh7(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onClick19(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }


  onChange11(): void {
    this.mCount = this.mCount + 1;
    this.mStatus = 'active';
  }

}
