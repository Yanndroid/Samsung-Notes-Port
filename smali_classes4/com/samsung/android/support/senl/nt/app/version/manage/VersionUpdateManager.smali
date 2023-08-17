.class public Lcom/samsung/android/support/senl/nt/app/version/manage/VersionUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_VERSION_TABLE:[I

.field public static final VERSION_4_1_0_01:Ljava/lang/String; = "4.1.0.01"

.field public static final VERSION_4_2_0_22:Ljava/lang/String; = "4.2.0.22"

.field public static final VERSION_4_2_1_53:Ljava/lang/String; = "4.2.1.53"

.field public static final VERSION_4_2_4_27:Ljava/lang/String; = "4.2.4.27"

.field public static final VERSION_CODE_4_1_0_01:I = 0x0

.field public static final VERSION_CODE_4_2_0_22:I = 0x2

.field public static final VERSION_CODE_4_2_1_53:I = 0x3

.field public static final VERSION_CODE_4_2_4_27:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/version/manage/VersionUpdateManager;->APP_VERSION_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertVersionCode(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public createVersionUpdate(II)Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate_To_4_2_4_27;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate_To_4_2_4_27;-><init>(I)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate_To_4_2_1_53;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate_To_4_2_1_53;-><init>(I)V

    return-object p2

    :cond_2
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate_To_4_2_0_22;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate_To_4_2_0_22;-><init>(I)V

    return-object p2
.end method

.method public findUpgrades(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/version/manage/VersionUpdateManager;->APP_VERSION_TABLE:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    if-ge p1, v4, :cond_0

    if-gt v4, p2, :cond_0

    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/support/senl/nt/app/version/manage/VersionUpdateManager;->createVersionUpdate(II)Lcom/samsung/android/support/senl/nt/app/version/history/VersionUpdate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
