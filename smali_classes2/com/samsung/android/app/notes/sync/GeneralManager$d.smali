.class public Lcom/samsung/android/app/notes/sync/GeneralManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/GeneralManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/GeneralManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/GeneralManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager$d;->a:Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnded(Ljava/lang/String;I)V
    .locals 0

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lp/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
