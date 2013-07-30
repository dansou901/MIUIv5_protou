.class Lcom/android/server/pm/PackageScanState;
.super Ljava/lang/Object;
.source "PackageScanState.java"


# instance fields
.field private final mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0
    .parameter "args"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageScanState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-void
.end method


# virtual methods
.method public getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PackageScanState;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method
