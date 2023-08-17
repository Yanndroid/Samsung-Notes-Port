.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

.field public static final enum CreateFileFailed:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

.field public static final enum FileNotFound:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

.field public static final enum None:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

.field public static final enum PermissionFailed:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;


# instance fields
.field private mResId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->editor_error_description_none:I

    const-string v2, "None"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->editor_error_description_file_not_found:I

    const-string v4, "FileNotFound"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;->FileNotFound:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$string;->editor_error_description_fail_permission:I

    const-string v6, "PermissionFailed"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;->PermissionFailed:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$string;->editor_error_description_fail_create_file:I

    const-string v8, "CreateFileFailed"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;->CreateFileFailed:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;->mResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareErrorCode;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
