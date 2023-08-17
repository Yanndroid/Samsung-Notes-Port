.class public Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$HolderType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/common/FolderConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HolderType"
.end annotation


# static fields
.field public static final ADD_FOLDER:I = 0x3

.field public static final ALL_NOTES:I = 0x3ea

.field public static final COEDIT:I = 0x3f0

.field public static final DIVIDER:I = 0x3f3

.field public static final FAVOURITES:I = 0x3ec

.field public static final FOLDERS_MANAGE:I = 0x4

.field public static final HASH_TAG:I = 0x3f1

.field public static final LOCKED_NOTES:I = 0x3ed

.field public static final MY_FOLDERS:I = 0x2

.field public static final NORMAL:I = 0x0

.field public static final OLD_NOTES:I = 0x3eb

.field public static final RECENTLY_IMPORTED:I = 0x3ee

.field public static final RECYCLE_BIN:I = 0x3f2

.field public static final SCREEN_OFF_MEMO:I = 0x1

.field public static final SETTING:I = 0x3e9

.field public static final SHARED_NOTEBOOK:I = 0x3ef

.field public static TYPE_DRAWER_PHONE:I = 0x800

.field public static TYPE_DRAWER_PHONE_FREE_FORM_WINDOW:I = 0x1000

.field public static TYPE_DRAWER_TABLET:I = 0x400


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDefaultFolderType(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isExecuteType(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isRequireServerSyncType(I)Z
    .locals 1

    const/16 v0, 0x3ef

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
