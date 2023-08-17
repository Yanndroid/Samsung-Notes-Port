.class public final enum Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum Coedit:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum ComposerActivity:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum ContextMenu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum Default:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum DocumentSave:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum DocumentScan:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum Drawer:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum Folder:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum Lock:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum ManageCategory:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum MemoList:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum Menu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum OpenActivity:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum SettingsDetail:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum SettingsMain:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum ShareViaChooser:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

.field public static final enum SharedNoteBooks:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Default:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v3, "ShareViaChooser"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->ShareViaChooser:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v5, "DocumentSave"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->DocumentSave:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v5, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v7, "MemoList"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->MemoList:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v7, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v9, "Lock"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Lock:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v9, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v11, "SettingsMain"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SettingsMain:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v11, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v13, "SettingsDetail"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SettingsDetail:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v13, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v15, "OpenActivity"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->OpenActivity:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v15, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v14, "ManageCategory"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->ManageCategory:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v14, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v12, "SharedNoteBooks"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SharedNoteBooks:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v12, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v10, "Folder"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Folder:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v10, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v8, "Drawer"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Drawer:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v6, "ComposerActivity"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->ComposerActivity:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v6, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v4, "Menu"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Menu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v2, "DocumentScan"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->DocumentScan:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v6, "Coedit"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Coedit:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    new-instance v6, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const-string v4, "ContextMenu"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->ContextMenu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/16 v4, 0x11

    new-array v4, v4, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->$VALUES:[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->$VALUES:[Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    return-object v0
.end method
