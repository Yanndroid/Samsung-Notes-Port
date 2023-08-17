.class Lcom/microsoft/identity/common/components/SettablePlatformComponents$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/providers/oauth2/IStateGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/components/SettablePlatformComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/components/SettablePlatformComponents;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/components/SettablePlatformComponents;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$3;->this$0:Lcom/microsoft/identity/common/components/SettablePlatformComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
