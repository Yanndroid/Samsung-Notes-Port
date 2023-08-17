.class public final synthetic Lcom/samsung/android/support/senl/nt/app/updater/restore/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/a;->a:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/a;->a:Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;->a(Lcom/samsung/android/support/senl/nt/app/updater/restore/DuplicatedDatabaseDetector;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
