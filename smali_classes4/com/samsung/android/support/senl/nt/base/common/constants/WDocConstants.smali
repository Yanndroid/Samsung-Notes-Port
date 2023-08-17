.class public Lcom/samsung/android/support/senl/nt/base/common/constants/WDocConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.app.notes"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BASE_URI_NOTE_USERTAG:Landroid/net/Uri;

.field public static final CORRUPTED_INVALID_DATA_SIZE:I = 0x4

.field public static final CORRUPTED_INVALID_FILE_HASH:I = 0x10

.field public static final CORRUPTED_MAX_OBJECT_LIMIT:I = 0x2

.field public static final CORRUPTED_OCCURED:I = 0x1

.field public static final CORRUPTED_RESOURCE_LACKING_FROM_SERVER:I = 0x8

.field public static final HISTORY_GROUP_ADD_PDF:Ljava/lang/String; = "ADD_PDF"

.field public static final NO:I = 0x0

.field public static final NOT_EXIST:I = 0x2

.field public static final SYNCED:Ljava/lang/String; = "SYNCED"

.field private static final TAG:Ljava/lang/String; = "WDocConstants"

.field public static final TO_RECYCLE_BIN:I = 0x2

.field public static final URI_PATH_USERTAG:Ljava/lang/String; = "usertag"

.field public static final YES:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.android.app.notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/constants/WDocConstants;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usertag"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/constants/WDocConstants;->BASE_URI_NOTE_USERTAG:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
