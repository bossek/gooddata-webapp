defmodule Webapp.Schema.Types do
  use Absinthe.Schema.Notation

  @desc "GoodData Project"
  object :project do
    field :id, :id
    field :url, :string
    # Content
    field :environment, :string
    field :driver, :string
    field :state, :string
    # Meta
    field :title, :string
    # Other
    field :roles, list_of(:role) do
      arg :id, :string
      resolve &Webapp.RoleResolver.find_multiple/2
    end
  end

  @desc "Role"
  object :role do
    field :id, :id
    field :identifier, :string
    field :title, :string
    field :summary, :string
  end

  @desc "Permissions"
  object :permissions do
    field :canAccessIntegration, :string
    field :canCreateProjectDashboard, :string
    field :canExportDashboard, :string
    field :canManageComment, :string
    field :canExecute, :string
    field :canInitData, :string
    field :canManageIntegration, :string
    field :canCreateExecutionContext, :string
    field :canManageFolder, :string
    field :canInviteUserToProject, :string
    field :canCreateDomain, :string
    field :canCreateTableDataLoad, :string
    field :canSeeOtherUserDetails, :string
    field :canManageACL, :string
    field :canCreateRole, :string
    field :canCreateProjectTemplates, :string
    field :canCreateHelp, :string
    field :canManageDomain, :string
    field :canManageAttributeLabel, :string
    field :canCreateColumn, :string
    field :canManageReport, :string
    field :canExportReport, :string
    field :canManageDataSet, :string
    field :canSetUserVariables, :string
    field :canCreateAttributeGroup, :string
    field :canSetStyle, :string
    field :canValidateProject, :string
    field :canMaintainProject, :string
    field :canCreateETLFile, :string
    field :canCreateScheduledMail, :string
    field :canSuspendUserFromProject, :string
    field :canManageIsProduction, :string
    field :canMaintainUserFilterRelation, :string
    field :canManageAttribute, :string
    field :canManageReportDefinition, :string
    field :canCreateReport, :string
    field :canMaintainUserFilter, :string
    field :canSetLocale, :string
    field :canEnrichData, :string
    field :canUploadNonProductionCSV, :string
    field :canManageETLFile, :string
    field :canCreateComment, :string
    field :canCreateDataSet, :string
    field :canManageExecutionContext, :string
    field :canCreateTable, :string
    field :canManageTableDataLoad, :string
    field :canCreateMetric, :string
    field :canRefreshData, :string
    field :canManageFilterSettings, :string
    field :canManageProjectDashboard, :string
    field :canManageProject, :string
    field :canManagePrompt, :string
    field :canAccessWorkbench, :string
    field :canCreateAttributeLabel, :string
    field :canManageColumn, :string
    field :canCreatePrompt, :string
    field :canManagePublicAccessCode, :string
    field :canListUsersInProject, :string
    field :canManageAttributeGroup, :string
    field :canManageMetric, :string
    field :canManageHelp, :string
    field :canManageTable, :string
    field :canSetProjectVariables, :string
    field :canManageFact, :string
    field :canCreateFolder, :string
    field :canManageScheduledMail, :string
    field :canListInvitationsInProject, :string
    field :canCreateFilterSettings, :string
    field :canExecuteRaw, :string
    field :canSeePublicAccessCode, :string
    field :canCreateReportDefinition, :string
    field :canCreateFact, :string
    field :canCreateAttribute, :string
    field :canAssignUserWithRole, :string
  end
end