.class public final enum Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

.field public static final enum ALL:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

.field public static final enum COEDIT_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

.field public static final DEFAULT_OLD_NOTES_PREDEFINED_CATEGORY:[[Ljava/lang/String;

.field public static final DEFAULT_PREDEFINED_CATEGORY_UUID_ARRAY:[Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

.field public static final DEFAULT_PREDEFINED_OLD_CATEGORY_UUID_ARRAY:[Ljava/lang/String;

.field public static final enum OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

.field public static final enum RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

.field public static final enum SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

.field public static final enum SHARED_NOTE_BOOK:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

.field public static final enum UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const-string v3, "all:///"

    const-string v4, "all:///"

    const-string v5, "All"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->ALL:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const-string v8, "RECYCLE_BIN"

    const/4 v9, 0x1

    const-string v10, "trash:///"

    const-string v11, "trash:///"

    const-string v12, "Trash"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->RECYCLE_BIN:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const-string v14, "UNCATEGORIZED"

    const/4 v15, 0x2

    const-string v16, "uncategorized:///"

    const-string v17, "uncategorized:///"

    const-string v18, "Uncategorized"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const-string v8, "SCREEN_OFF_MEMO"

    const/4 v9, 0x3

    const-string v10, "screenOffMemo:///"

    const-string v11, "Screen off memo"

    const-string v12, "Screen off memo"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const-string v14, "SHARED_NOTE_BOOK"

    const/4 v15, 0x4

    const-string v16, "shared:///"

    const-string v17, "shared:///"

    const-string v18, "Shared notebooks"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SHARED_NOTE_BOOK:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const-string v8, "OLD_NOTES"

    const/4 v9, 0x5

    const-string v10, "old:///"

    const-string v11, "old:///"

    const-string v12, "Old notebooks"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->OLD_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    new-instance v5, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const-string v14, "COEDIT_NOTES"

    const/4 v15, 0x6

    const-string v16, "coedit:///"

    const-string v17, "coedit:///"

    const-string v18, "Coedit"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->COEDIT_NOTES:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const/4 v7, 0x7

    new-array v7, v7, [Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v9, 0x2

    aput-object v1, v7, v9

    const/4 v10, 0x3

    aput-object v2, v7, v10

    const/4 v2, 0x4

    aput-object v3, v7, v2

    const/4 v2, 0x5

    aput-object v4, v7, v2

    const/4 v2, 0x6

    aput-object v5, v7, v2

    sput-object v7, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->$VALUES:[Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    new-array v2, v10, [Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    aput-object v1, v2, v8

    aput-object v0, v2, v6

    aput-object v4, v2, v9

    sput-object v2, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->DEFAULT_PREDEFINED_CATEGORY_UUID_ARRAY:[Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    const-string v10, "old:///"

    const-string v11, "1"

    const-string v12, "2"

    const-string v13, "old_recyclebin"

    const-string v14, "old_restored"

    const-string v15, "old_converted_notes"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->DEFAULT_PREDEFINED_OLD_CATEGORY_UUID_ARRAY:[Ljava/lang/String;

    new-array v0, v9, [[Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "Uncategorized"

    const-string v3, "1000000"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "2"

    const-string v2, "Screen off memo"

    const-string v3, "999999"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->DEFAULT_OLD_NOTES_PREDEFINED_CATEGORY:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->mUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->mPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public static convertNewCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->values()[Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findByPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->values()[Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isRootFolder(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->find(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRootFolderInDB(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "uncategorized:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "trash:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "old:///"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->$VALUES:[Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->mUuid:Ljava/lang/String;

    return-object v0
.end method
