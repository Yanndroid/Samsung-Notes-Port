.class LcoeditCoreMessage/CatchupType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/CatchupType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "LcoeditCoreMessage/CatchupType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)LcoeditCoreMessage/CatchupType;
    .locals 0

    invoke-static {p1}, LcoeditCoreMessage/CatchupType;->forNumber(I)LcoeditCoreMessage/CatchupType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    invoke-virtual {p0, p1}, LcoeditCoreMessage/CatchupType$1;->findValueByNumber(I)LcoeditCoreMessage/CatchupType;

    move-result-object p1

    return-object p1
.end method
