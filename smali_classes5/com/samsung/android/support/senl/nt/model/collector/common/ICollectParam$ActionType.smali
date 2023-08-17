.class public final enum Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum CANCEL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum NONE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum PAUSE_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum PAUSE_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum RESUME_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum RESUME_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum START:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum UPDATE_NOTE_DOC_OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum UPDATE_READY_STATE_NOTES:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

.field public static final enum UPDATE_SKIPPED_NOTES_OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->NONE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->START:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v5, "CANCEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->CANCEL:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    new-instance v5, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v7, "RESUME_NOTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->RESUME_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    new-instance v7, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v9, "PAUSE_NOTE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->PAUSE_NOTE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    new-instance v9, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v11, "RESUME_PDF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->RESUME_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    new-instance v11, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v13, "PAUSE_PDF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->PAUSE_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    new-instance v13, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v15, "UPDATE_READY_STATE_NOTES"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->UPDATE_READY_STATE_NOTES:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    new-instance v15, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v14, "UPDATE_NOTE_DOC_OBJECT_RECOGNITION"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->UPDATE_NOTE_DOC_OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    new-instance v14, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const-string v12, "UPDATE_SKIPPED_NOTES_OBJECT_RECOGNITION"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->UPDATE_SKIPPED_NOTES_OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    const/4 v0, 0x3

    aput-object v5, v12, v0

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    aput-object v15, v12, v10

    aput-object v14, v12, v8

    sput-object v12, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

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

    iput p3, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->$VALUES:[Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->value:I

    return v0
.end method
