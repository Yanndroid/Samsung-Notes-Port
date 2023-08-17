.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$PlaceData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddressData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_DELETE:I = 0x2

.field public static final ACTION_TYPE_MODIFY:I = 0x1

.field public static final ACTION_TYPE_NONE:I = 0x0

.field public static final CALENDAR_TYPE_ADDED_VERSION:I = 0x4

.field public static final CALENDAR_TYPE_LEAP:Ljava/lang/String; = "2"

.field public static final CALENDAR_TYPE_LUNAR:Ljava/lang/String; = "1"

.field public static final CALENDAR_TYPE_SOLAR:Ljava/lang/String; = "0"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/mobileservice/profile/Profile;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHOTO_FILE_URI_ADDED_VERSION:I = 0x5

.field private static final PLACE_DELETED_VERSION:I = 0x3

.field public static final PROFILE_VERSION:I = 0x5

.field private static sConnectedProfileVersion:I = 0x5


# instance fields
.field private mAccountBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

.field private mAccountName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

.field private mBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

.field private mEmailAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

.field private mEvent:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

.field private mGender:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

.field private mHealth:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

.field private mMessengerAccount:Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

.field private mName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

.field private mNickname:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

.field private mNote:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

.field private mOrganization:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

.field private mPhoneNumber:Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

.field private mPhoto:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

.field private mStatusMessage:Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

.field private mWebAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNickname:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoto:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mOrganization:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mGender:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mStatusMessage:Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNote:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mMessengerAccount:Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoneNumber:Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEmailAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mWebAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEvent:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mHealth:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    return v0
.end method

.method private readDeprecatedPlaceData(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PlaceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method private writeDeprecatedPlaceData(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountBirthdayInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    return-object v0
.end method

.method public getAccountNameInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    return-object v0
.end method

.method public getBirthdayInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    return-object v0
.end method

.method public getConnectedProfileVersion()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    return v0
.end method

.method public getEmailAddressInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEmailAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    return-object v0
.end method

.method public getEventInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEvent:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    return-object v0
.end method

.method public getGenderInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mGender:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    return-object v0
.end method

.method public getHealthInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mHealth:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    return-object v0
.end method

.method public getMessengerAccountInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mMessengerAccount:Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    return-object v0
.end method

.method public getNameInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    return-object v0
.end method

.method public getNicknameInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNickname:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    return-object v0
.end method

.method public getNoteInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNote:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    return-object v0
.end method

.method public getOrganizationInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mOrganization:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    return-object v0
.end method

.method public getPhoneNumberInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoneNumber:Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    return-object v0
.end method

.method public getPhotoInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoto:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    return-object v0
.end method

.method public getStatusMessageInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mStatusMessage:Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    return-object v0
.end method

.method public getWebAddressInstance()Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mWebAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNickname:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoto:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mOrganization:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mGender:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mStatusMessage:Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNote:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mMessengerAccount:Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoneNumber:Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEmailAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mWebAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEvent:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mHealth:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    sget v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->readDeprecatedPlaceData(Landroid/os/Parcel;)V

    :cond_0
    return-void
.end method

.method public setConnectedProfileVersion(I)V
    .locals 0

    sput p1, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNickname:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoto:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mOrganization:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mGender:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mStatusMessage:Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNote:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mMessengerAccount:Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoneNumber:Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEmailAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mWebAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEvent:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;->putParcelData(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mHealth:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->putParcelData(Landroid/os/Parcel;)V

    sget p2, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->writeDeprecatedPlaceData(Landroid/os/Parcel;)V

    :cond_0
    return-void
.end method
